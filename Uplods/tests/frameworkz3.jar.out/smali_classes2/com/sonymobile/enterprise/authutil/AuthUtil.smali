.class public Lcom/sonymobile/enterprise/authutil/AuthUtil;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/enterprise/authutil/AuthUtil$1;,
        Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;,
        Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;,
        Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    }
.end annotation


# static fields
.field private static final AUTHENTICATIONEXTENSION:Ljava/lang/String; = "1.2.3.4"

.field private static final AUTHENTICATIONTAG:Ljava/lang/String; = "Authentication:"

.field private static final CAFILEPATH:Ljava/lang/String; = "/system/etc/api_auth_cacert"

.field private static final CRLFILEPATH:Ljava/lang/String; = "/system/etc/api_auth_crl"

.field private static final DBG:Z = false

.field private static final SILENTINSTALL:Ljava/lang/String; = "silentInstall"

.field private static final TAG:Ljava/lang/String; = "AuthUtil"

.field private static final TESTCAFILEPATH:Ljava/lang/String; = "/system/etc/test_api_auth_cacert"

.field private static final TESTCRLFILEPATH:Ljava/lang/String; = "/system/etc/test_api_auth_crl"

.field private static final WHITELISTFILENAME:Ljava/lang/String; = "/system/etc/admin_white_list.xml"


# instance fields
.field private mAdminWhiteList:[Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;

.field private mSilentInstallCACerts:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil;->mAdminWhiteList:[Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;

    .line 74
    iput-object v0, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil;->mSilentInstallCACerts:[Ljava/security/cert/X509Certificate;

    .line 776
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/enterprise/authutil/AuthUtil;Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/enterprise/authutil/AuthUtil;
    .param p1, "x1"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->extractCertExtensionString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/enterprise/authutil/AuthUtil;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/enterprise/authutil/AuthUtil;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->extractAuthItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private adminPublicKeyAllowsSilentInstall(Ljava/security/PublicKey;)Z
    .locals 7
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil;->mSilentInstallCACerts:[Ljava/security/cert/X509Certificate;

    .local v0, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 367
    .local v1, "certentry":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->isPublicKeysSame(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    const-string v4, "AuthUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found matching key in certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v4, 0x1

    .line 374
    .end local v1    # "certentry":Ljava/security/cert/X509Certificate;
    :goto_1
    return v4

    .line 366
    .restart local v1    # "certentry":Ljava/security/cert/X509Certificate;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "certentry":Ljava/security/cert/X509Certificate;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static allowSilentInstall(Landroid/content/ComponentName;I)Z
    .locals 9
    .param p0, "who"    # Landroid/content/ComponentName;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 159
    if-nez p0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v6

    .line 163
    :cond_1
    new-instance v2, Lcom/sonymobile/enterprise/authutil/AuthUtil;

    invoke-direct {v2}, Lcom/sonymobile/enterprise/authutil/AuthUtil;-><init>()V

    .line 165
    .local v2, "authUtil":Lcom/sonymobile/enterprise/authutil/AuthUtil;
    invoke-direct {v2, p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->getAdminPublicKeys(Landroid/content/ComponentName;I)[Ljava/security/PublicKey;

    move-result-object v0

    .line 167
    .local v0, "adminPublicKeys":[Ljava/security/PublicKey;
    if-eqz v0, :cond_0

    .line 171
    move-object v1, v0

    .local v1, "arr$":[Ljava/security/PublicKey;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 172
    .local v5, "publicKey":Ljava/security/PublicKey;
    invoke-direct {v2, v5}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->isInWhiteList(Ljava/security/PublicKey;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 173
    goto :goto_0

    .line 176
    :cond_2
    invoke-direct {v2, v5}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->checkAdminPublicKeyAgainstCert(Ljava/security/PublicKey;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 177
    goto :goto_0

    .line 171
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static allowSilentInstall(Landroid/content/ComponentName;ILjava/security/cert/CertPath;)Z
    .locals 10
    .param p0, "who"    # Landroid/content/ComponentName;
    .param p1, "userHandle"    # I
    .param p2, "certPath"    # Ljava/security/cert/CertPath;

    .prologue
    .line 200
    if-eqz p0, :cond_0

    if-nez p2, :cond_2

    .line 201
    :cond_0
    const/4 v7, 0x0

    .line 224
    :cond_1
    return v7

    .line 204
    :cond_2
    const/4 v7, 0x0

    .line 206
    .local v7, "retVal":Z
    new-instance v2, Lcom/sonymobile/enterprise/authutil/AuthUtil;

    invoke-direct {v2}, Lcom/sonymobile/enterprise/authutil/AuthUtil;-><init>()V

    .line 208
    .local v2, "authUtil":Lcom/sonymobile/enterprise/authutil/AuthUtil;
    const-string v8, "silentInstall"

    invoke-direct {v2, p2, v8}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->certChainValidateAndGetPubKey(Ljava/security/cert/CertPath;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 209
    .local v3, "certPublicKey":Ljava/security/PublicKey;
    invoke-direct {v2, p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->getAdminPublicKeys(Landroid/content/ComponentName;I)[Ljava/security/PublicKey;

    move-result-object v0

    .line 211
    .local v0, "adminPublicKeys":[Ljava/security/PublicKey;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 212
    move-object v1, v0

    .local v1, "arr$":[Ljava/security/PublicKey;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 213
    .local v6, "publicKey":Ljava/security/PublicKey;
    invoke-static {v3, v6}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->isPublicKeysSame(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 214
    const-string v8, "AuthUtil"

    const-string v9, "Found matching key"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v7, 0x1

    .line 212
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private buildAdminWhiteList()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 493
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    .line 497
    .local v8, "whiteListFile":Ljava/io/FileInputStream;
    :try_start_0
    const-string v10, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 498
    new-instance v9, Ljava/io/FileInputStream;

    const-string v10, "/system/etc/admin_white_list.xml"

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v8    # "whiteListFile":Ljava/io/FileInputStream;
    .local v9, "whiteListFile":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 501
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 503
    .local v5, "eventType":I
    const/4 v2, 0x0

    .line 505
    .local v2, "certificate":Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "currentAdmin":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    move-object v1, v0

    .line 507
    .end local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .local v1, "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    :goto_0
    const/4 v10, 0x1

    if-eq v5, v10, :cond_3

    .line 508
    const/4 v6, 0x0

    .line 510
    .local v6, "name":Ljava/lang/String;
    packed-switch v5, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v0, v1

    .line 538
    .end local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    move-object v1, v0

    .line 539
    .end local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    goto :goto_0

    .line 512
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .end local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    goto :goto_1

    .line 515
    .end local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    :pswitch_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 516
    const-string v10, "client"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 517
    new-instance v3, Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;

    .end local v3    # "currentAdmin":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    invoke-direct {v3, p0}, Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;-><init>(Lcom/sonymobile/enterprise/authutil/AuthUtil;)V

    .restart local v3    # "currentAdmin":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    move-object v0, v1

    .end local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    goto :goto_1

    .line 518
    .end local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    :cond_1
    if-eqz v3, :cond_0

    .line 519
    const-string v10, "packagename"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 520
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;->mPackageName:Ljava/lang/String;

    move-object v0, v1

    .end local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    goto :goto_1

    .line 521
    .end local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    :cond_2
    const-string v10, "certificate_data"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 522
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->getPublicKey([B)Ljava/security/PublicKey;

    move-result-object v10

    iput-object v10, v3, Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;->mPublicKey:Ljava/security/PublicKey;

    move-object v0, v1

    .end local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    goto :goto_1

    .line 528
    .end local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    :pswitch_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 529
    const-string v10, "client"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v3, :cond_0

    .line 530
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 531
    const/4 v3, 0x0

    move-object v0, v1

    .end local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    goto :goto_1

    .line 541
    .end local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .end local v6    # "name":Ljava/lang/String;
    .restart local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    :cond_3
    if-eqz v9, :cond_4

    .line 542
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    move-object v8, v9

    .end local v9    # "whiteListFile":Ljava/io/FileInputStream;
    .restart local v8    # "whiteListFile":Ljava/io/FileInputStream;
    move-object v0, v1

    .line 549
    .end local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .end local v2    # "certificate":Ljava/security/cert/Certificate;
    .end local v3    # "currentAdmin":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    .end local v5    # "eventType":I
    .restart local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    :goto_2
    if-eqz v0, :cond_5

    .line 550
    new-array v10, v12, [Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;

    iput-object v10, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil;->mAdminWhiteList:[Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;

    .line 552
    :cond_5
    return-void

    .line 541
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v8, :cond_6

    .line 542
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_6
    throw v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 545
    :catch_0
    move-exception v4

    .line 546
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    const-string v10, "AuthUtil"

    const-string v11, "Failed to create the whitelist"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 545
    .end local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "whiteListFile":Ljava/io/FileInputStream;
    .restart local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v2    # "certificate":Ljava/security/cert/Certificate;
    .restart local v3    # "currentAdmin":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    .restart local v5    # "eventType":I
    .restart local v9    # "whiteListFile":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v8, v9

    .end local v9    # "whiteListFile":Ljava/io/FileInputStream;
    .restart local v8    # "whiteListFile":Ljava/io/FileInputStream;
    move-object v0, v1

    .end local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    goto :goto_4

    .line 541
    .end local v2    # "certificate":Ljava/security/cert/Certificate;
    .end local v3    # "currentAdmin":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    .end local v5    # "eventType":I
    .end local v8    # "whiteListFile":Ljava/io/FileInputStream;
    .restart local v9    # "whiteListFile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "whiteListFile":Ljava/io/FileInputStream;
    .restart local v8    # "whiteListFile":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .end local v8    # "whiteListFile":Ljava/io/FileInputStream;
    .restart local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v2    # "certificate":Ljava/security/cert/Certificate;
    .restart local v5    # "eventType":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "whiteListFile":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "whiteListFile":Ljava/io/FileInputStream;
    .restart local v8    # "whiteListFile":Ljava/io/FileInputStream;
    move-object v0, v1

    .end local v1    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    .restart local v0    # "adminInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;>;"
    goto :goto_3

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private buildSilentInstallCaList()V
    .locals 14

    .prologue
    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 445
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v9, "silentInstallCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v2, "certAliasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v10, v13, [Ljava/lang/String;

    .line 448
    .local v10, "userCertAlias":[Ljava/lang/String;
    new-array v1, v13, [Ljava/lang/String;

    .line 451
    .local v1, "caAlias":[Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v8

    .line 452
    .local v8, "keyStore":Landroid/security/KeyStore;
    const-string v11, "USRCERT_"

    invoke-virtual {v8, v11, v12}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 453
    const-string v11, "CACERT_"

    invoke-virtual {v8, v11, v12}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 456
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 458
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 463
    .local v0, "alias":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    .line 465
    .local v3, "certBytes":[B
    if-nez v3, :cond_1

    .line 466
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    .line 469
    :cond_1
    if-eqz v3, :cond_0

    .line 474
    :try_start_0
    const-string v11, "X.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 475
    .local v4, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 478
    .local v5, "certificate":Ljava/security/cert/X509Certificate;
    invoke-static {v5}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->certAllowsSilentinstall(Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 479
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    .end local v4    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v6

    .line 482
    .local v6, "e":Ljava/security/cert/CertificateException;
    const-string v11, "AuthUtil"

    const-string v12, "Couldn\'t parse certificate in keystore"

    invoke-static {v11, v12, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 486
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "certBytes":[B
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    :cond_2
    new-array v11, v13, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/security/cert/X509Certificate;

    iput-object v11, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil;->mSilentInstallCACerts:[Ljava/security/cert/X509Certificate;

    .line 487
    return-void
.end method

.method private static certAllowsSilentinstall(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_2

    .line 109
    new-instance v0, Lcom/sonymobile/enterprise/authutil/AuthUtil;

    invoke-direct {v0}, Lcom/sonymobile/enterprise/authutil/AuthUtil;-><init>()V

    .line 111
    .local v0, "authUtil":Lcom/sonymobile/enterprise/authutil/AuthUtil;
    const-string v3, "silentInstall"

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->checkCertificateAuthField(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const/4 v2, 0x1

    .line 114
    .end local v0    # "authUtil":Lcom/sonymobile/enterprise/authutil/AuthUtil;
    :cond_0
    :goto_0
    return v2

    .line 104
    :catch_0
    move-exception v1

    .line 106
    .local v1, "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 104
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private certChainValidateAndGetPubKey(Ljava/security/cert/CertPath;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 33
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    .line 669
    const/16 v25, 0x0

    .line 672
    .local v25, "publicKey":Ljava/security/PublicKey;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->getTrustedRootCA()[Ljava/security/cert/X509Certificate;

    move-result-object v28

    .line 674
    .local v28, "trustedRootCA":[Ljava/security/cert/X509Certificate;
    if-nez v28, :cond_0

    .line 675
    const-string v30, "AuthUtil"

    const-string v31, "Root CA certificates are missing!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/16 v30, 0x0

    .line 757
    .end local v28    # "trustedRootCA":[Ljava/security/cert/X509Certificate;
    :goto_0
    return-object v30

    .line 679
    .restart local v28    # "trustedRootCA":[Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->getCerRevocationList()[Ljava/security/cert/X509CRL;

    move-result-object v13

    .line 681
    .local v13, "crl":[Ljava/security/cert/X509CRL;
    if-nez v13, :cond_1

    .line 682
    const-string v30, "AuthUtil"

    const-string v31, "Certificate revocation list is missing!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v30, 0x0

    goto :goto_0

    .line 686
    :cond_1
    move-object/from16 v4, v28

    .local v4, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v0, v4

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    move/from16 v18, v17

    .end local v4    # "arr$":[Ljava/security/cert/X509Certificate;
    .end local v17    # "i$":I
    .end local v21    # "len$":I
    .local v18, "i$":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget-object v6, v4, v18

    .line 688
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v7, "certCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v7, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 690
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance v9, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v9, v7}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 692
    .local v9, "certStoreParams":Ljava/security/cert/CollectionCertStoreParameters;
    const-string v30, "Collection"

    move-object/from16 v0, v30

    invoke-static {v0, v9}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v8

    .line 694
    .local v8, "certStore":Ljava/security/cert/CertStore;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 695
    .local v3, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    new-instance v30, Ljava/security/cert/TrustAnchor;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v6, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object/from16 v0, v30

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 698
    :try_start_1
    new-instance v24, Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 699
    .local v24, "params":Ljava/security/cert/PKIXParameters;
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 703
    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 705
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v11

    .line 706
    .local v11, "clist":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v11}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v23

    .line 708
    .local v23, "ob":[Ljava/lang/Object;
    const/16 v16, 0x0

    .end local v18    # "i$":I
    .local v16, "i":I
    :goto_2
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 710
    aget-object v10, v23, v16

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 713
    .local v10, "certificate":Ljava/security/cert/X509Certificate;
    move-object v5, v13

    .local v5, "arr$":[Ljava/security/cert/X509CRL;
    array-length v0, v5

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-object v14, v5, v17

    .line 714
    .local v14, "crlList":Ljava/security/cert/X509CRL;
    invoke-virtual {v14, v10}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;

    move-result-object v27

    .line 715
    .local v27, "revoked":Ljava/security/cert/X509CRLEntry;
    if-eqz v27, :cond_2

    .line 716
    const-string v30, "AuthUtil"

    const-string v31, "Certificate is revoked"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v30, "AuthUtil"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Revoked Certificate serial # "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 713
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 708
    .end local v14    # "crlList":Ljava/security/cert/X509CRL;
    .end local v27    # "revoked":Ljava/security/cert/X509CRLEntry;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 723
    .end local v5    # "arr$":[Ljava/security/cert/X509CRL;
    .end local v10    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    :cond_4
    new-instance v30, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;-><init>(Lcom/sonymobile/enterprise/authutil/AuthUtil;Lcom/sonymobile/enterprise/authutil/AuthUtil$1;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 725
    const-string v30, "PKIX"

    invoke-static/range {v30 .. v30}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v29

    .line 727
    .local v29, "validator":Ljava/security/cert/CertPathValidator;
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v26

    check-cast v26, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 734
    .local v26, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    invoke-direct/range {p0 .. p2}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->certsHasExtension(Ljava/security/cert/CertPath;Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v25

    .line 686
    .end local v11    # "clist":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v16    # "i":I
    .end local v23    # "ob":[Ljava/lang/Object;
    .end local v24    # "params":Ljava/security/cert/PKIXParameters;
    .end local v26    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v29    # "validator":Ljava/security/cert/CertPathValidator;
    :goto_4
    add-int/lit8 v17, v18, 0x1

    .restart local v17    # "i$":I
    move/from16 v18, v17

    .end local v17    # "i$":I
    .restart local v18    # "i$":I
    goto/16 :goto_1

    .line 742
    .end local v18    # "i$":I
    :catch_0
    move-exception v12

    .line 743
    .local v12, "cpve":Ljava/security/cert/CertPathValidatorException;
    :try_start_2
    const-string v30, "AuthUtil"

    const-string v31, "Certificate validation failed"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    .line 749
    .end local v3    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "certCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v8    # "certStore":Ljava/security/cert/CertStore;
    .end local v9    # "certStoreParams":Ljava/security/cert/CollectionCertStoreParameters;
    .end local v12    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v13    # "crl":[Ljava/security/cert/X509CRL;
    .end local v28    # "trustedRootCA":[Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v19

    .line 750
    .local v19, "iae":Ljava/lang/IllegalArgumentException;
    const-string v30, "AuthUtil"

    const-string v31, "This shouldn\'t happen"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v19    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_5
    move-object/from16 v30, v25

    .line 757
    goto/16 :goto_0

    .line 744
    .restart local v3    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local v6    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "certCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v8    # "certStore":Ljava/security/cert/CertStore;
    .restart local v9    # "certStoreParams":Ljava/security/cert/CollectionCertStoreParameters;
    .restart local v13    # "crl":[Ljava/security/cert/X509CRL;
    .restart local v28    # "trustedRootCA":[Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v20

    .line 745
    .local v20, "iape":Ljava/security/InvalidAlgorithmParameterException;
    :try_start_3
    const-string v30, "AuthUtil"

    const-string v31, "Validation failed"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    .line 751
    .end local v3    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "certCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v8    # "certStore":Ljava/security/cert/CertStore;
    .end local v9    # "certStoreParams":Ljava/security/cert/CollectionCertStoreParameters;
    .end local v13    # "crl":[Ljava/security/cert/X509CRL;
    .end local v20    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .end local v28    # "trustedRootCA":[Ljava/security/cert/X509Certificate;
    :catch_3
    move-exception v20

    .line 752
    .restart local v20    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    const-string v30, "AuthUtil"

    const-string v31, "Validation failed"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 753
    .end local v20    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v15

    .line 754
    .local v15, "ex":Ljava/lang/Exception;
    :goto_6
    const-string v30, "AuthUtil"

    const-string v31, "Can\'t instantiate validator"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 753
    .end local v15    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v15

    goto :goto_6
.end method

.method private certsHasExtension(Ljava/security/cert/CertPath;Ljava/lang/String;)V
    .locals 6
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 764
    .local v1, "certificateList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 765
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v0, p2}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->checkCertificateInChainAuthField(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 766
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not authorized for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 772
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_1
    return-void
.end method

.method private checkAdminPublicKeyAgainstCert(Ljava/security/PublicKey;)Z
    .locals 1
    .param p1, "adminPublicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->buildSilentInstallCaList()V

    .line 356
    iget-object v0, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil;->mSilentInstallCACerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->adminPublicKeyAllowsSilentInstall(Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCertificateAuthField(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 342
    .local v1, "result":Z
    invoke-direct {p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->getCertificateAuthItems(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    .line 344
    .local v0, "authItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const/4 v1, 0x1

    .line 350
    :goto_0
    return v1

    .line 347
    :cond_0
    const-string v2, "AuthUtil"

    const-string v3, "Extension does not contain the requested authentication"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCertificateInChainAuthField(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 311
    .local v2, "result":Z
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 317
    .local v1, "isIntermediateCA":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->getCertificateAuthItems(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "authItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 320
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    const/4 v2, 0x1

    .line 336
    :cond_0
    :goto_1
    return v2

    .line 311
    .end local v0    # "authItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "isIntermediateCA":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 324
    .restart local v0    # "authItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "isIntermediateCA":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 330
    const/4 v2, 0x1

    goto :goto_1

    .line 332
    :cond_3
    const-string v3, "AuthUtil"

    const-string v4, "Extension does not contain the requested authentication"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private extractAuthItems(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "extensionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "authItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 268
    const-string v2, "Authentication:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 269
    const-string v2, "[^A-Za-z0-9,]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    const-string v2, "\\s*,\\s*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "authItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    .restart local v0    # "authItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 279
    const-string v2, ""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 281
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 288
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method private extractCertExtensionString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 12
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 228
    const/4 v5, 0x0

    .line 231
    .local v5, "extensionString":Ljava/lang/String;
    :try_start_0
    const-string v10, "1.2.3.4"

    invoke-virtual {p1, v10}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    .local v0, "asn1EncodedBytes":[B
    if-eqz v0, :cond_1

    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const/4 v6, 0x0

    .line 237
    .local v6, "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_1
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .end local v3    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v4, "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 239
    .local v1, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v8

    .line 240
    .local v8, "octets":[B
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 241
    .end local v6    # "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v7, "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_3
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1String;

    .line 242
    .local v9, "s":Lcom/android/org/bouncycastle/asn1/ASN1String;
    invoke-interface {v9}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v5

    .line 244
    if-eqz v4, :cond_0

    .line 245
    :try_start_4
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 247
    :cond_0
    if-eqz v7, :cond_1

    .line 248
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 260
    .end local v0    # "asn1EncodedBytes":[B
    .end local v1    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v4    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v7    # "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v8    # "octets":[B
    .end local v9    # "s":Lcom/android/org/bouncycastle/asn1/ASN1String;
    :cond_1
    :goto_0
    return-object v5

    .line 244
    .restart local v0    # "asn1EncodedBytes":[B
    .restart local v3    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v6    # "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catchall_0
    move-exception v10

    :goto_1
    if-eqz v3, :cond_2

    .line 245
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 247
    :cond_2
    if-eqz v6, :cond_3

    .line 248
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    :cond_3
    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    .end local v0    # "asn1EncodedBytes":[B
    .end local v3    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v6    # "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "AuthUtil"

    const-string v11, "Failed to parse cert"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "asn1EncodedBytes":[B
    .restart local v4    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v6    # "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v3    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    goto :goto_1

    .end local v3    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v6    # "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v1    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .restart local v4    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v7    # "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v8    # "octets":[B
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v6    # "octetStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    move-object v3, v4

    .end local v4    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v3    # "encodedStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    goto :goto_1
.end method

.method private getAdminPublicKeys(Landroid/content/ComponentName;I)[Ljava/security/PublicKey;
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 387
    const/4 v1, 0x0

    .line 389
    .local v1, "adminPublicKeys":[Ljava/security/PublicKey;
    if-eqz p1, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 393
    .local v0, "adminPackageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-interface {v3, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 399
    :goto_0
    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0, v0}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->getPackagePublicKeys(Landroid/content/pm/PackageInfo;)[Ljava/security/PublicKey;

    move-result-object v1

    .line 404
    .end local v0    # "adminPackageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v1

    .line 395
    .restart local v0    # "adminPackageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 396
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AuthUtil"

    const-string v4, "Failed to get admin packageinfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getCerRevocationList()[Ljava/security/cert/X509CRL;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 650
    const/4 v0, 0x0

    .line 652
    .local v0, "crl":[Ljava/security/cert/X509CRL;
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/security/cert/X509CRL;

    .line 655
    const-string v1, "/system/etc/api_auth_crl"

    invoke-direct {p0, v1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->loadCerRevocationList(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v1

    aput-object v1, v0, v3

    .line 657
    const-string v1, "/system/etc/test_api_auth_crl"

    invoke-direct {p0, v1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->loadCerRevocationList(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v1

    aput-object v1, v0, v4

    .line 665
    :goto_0
    return-object v0

    .line 659
    :cond_0
    new-array v0, v4, [Ljava/security/cert/X509CRL;

    .line 661
    const-string v1, "/system/etc/api_auth_crl"

    invoke-direct {p0, v1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->loadCerRevocationList(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private getCertificateAuthItems(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 294
    .local v0, "authItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->extractCertExtensionString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "extensionString":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Authentication:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    const-string v3, "Authentication:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authentication:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-direct {p0, v1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->extractAuthItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 302
    :cond_0
    return-object v0
.end method

.method private getPackagePublicKeys(Landroid/content/pm/PackageInfo;)[Ljava/security/PublicKey;
    .locals 8
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 408
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v5, "publicKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/PublicKey;>;"
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 412
    .local v3, "packageSignatures":[Landroid/content/pm/Signature;
    move-object v0, v3

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 413
    .local v6, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->getPublicKey([B)Ljava/security/PublicKey;

    move-result-object v4

    .line 415
    .local v4, "publicKey":Ljava/security/PublicKey;
    if-eqz v4, :cond_0

    .line 416
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    .end local v6    # "signature":Landroid/content/pm/Signature;
    :cond_1
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/security/PublicKey;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/PublicKey;

    return-object v7
.end method

.method private getPublicKey([B)Ljava/security/PublicKey;
    .locals 6
    .param p1, "CertificateData"    # [B

    .prologue
    .line 555
    const/4 v3, 0x0

    .line 558
    .local v3, "publicKey":Ljava/security/PublicKey;
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 559
    .local v2, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 562
    .local v1, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 567
    .end local v1    # "certificate":Ljava/security/cert/Certificate;
    .end local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v3

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string v4, "AuthUtil"

    const-string v5, "Failed to extract public key from certificate data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getTrustedRootCA()[Ljava/security/cert/X509Certificate;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 631
    const/4 v0, 0x0

    .line 633
    .local v0, "trusted_root_CA":[Ljava/security/cert/X509Certificate;
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/security/cert/X509Certificate;

    .line 636
    const-string v1, "/system/etc/api_auth_cacert"

    invoke-direct {p0, v1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->loadCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    aput-object v1, v0, v3

    .line 638
    const-string v1, "/system/etc/test_api_auth_cacert"

    invoke-direct {p0, v1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->loadCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    aput-object v1, v0, v4

    .line 646
    :goto_0
    return-object v0

    .line 640
    :cond_0
    new-array v0, v4, [Ljava/security/cert/X509Certificate;

    .line 642
    const-string v1, "/system/etc/api_auth_cacert"

    invoke-direct {p0, v1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->loadCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static isAuthorized(Landroid/content/ComponentName;ILjava/security/cert/CertPath;Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;)Z
    .locals 2
    .param p0, "who"    # Landroid/content/ComponentName;
    .param p1, "userHandle"    # I
    .param p2, "certPath"    # Ljava/security/cert/CertPath;
    .param p3, "extType"    # Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    .prologue
    .line 133
    sget-object v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$1;->$SwitchMap$com$sonymobile$enterprise$authutil$AuthUtil$ExtensionType:[I

    invoke-virtual {p3}, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 135
    :pswitch_0
    if-nez p2, :cond_0

    .line 136
    invoke-static {p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->allowSilentInstall(Landroid/content/ComponentName;I)Z

    move-result v0

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->allowSilentInstall(Landroid/content/ComponentName;ILjava/security/cert/CertPath;)Z

    move-result v0

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isInWhiteList(Ljava/security/PublicKey;)Z
    .locals 8
    .param p1, "adminPublicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 424
    const/4 v3, 0x0

    .line 426
    .local v3, "inWhiteList":Z
    invoke-direct {p0}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->buildAdminWhiteList()V

    .line 428
    iget-object v5, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil;->mAdminWhiteList:[Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;

    if-eqz v5, :cond_2

    .line 429
    iget-object v1, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil;->mAdminWhiteList:[Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;

    .local v1, "arr$":[Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 430
    .local v0, "adminInfo":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    iget-object v5, v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;->mPublicKey:Ljava/security/PublicKey;

    invoke-static {v5, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->isPublicKeysSame(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 431
    const-string v5, "AuthUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found matching key for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v3, 0x1

    .line 440
    .end local v0    # "adminInfo":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    .end local v1    # "arr$":[Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    :goto_1
    return v3

    .line 429
    .restart local v0    # "adminInfo":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    .restart local v1    # "arr$":[Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "adminInfo":Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    .end local v1    # "arr$":[Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    const-string v5, "AuthUtil"

    const-string v6, "No whitelist to compare to"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isPublicKeysSame(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 2
    .param p0, "publicKey1"    # Ljava/security/PublicKey;
    .param p1, "publicKey2"    # Ljava/security/PublicKey;

    .prologue
    .line 378
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCerRevocationList(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 601
    const/4 v3, 0x0

    .line 603
    .local v3, "crl":Ljava/security/cert/X509CRL;
    const/4 v5, 0x0

    .line 606
    .local v5, "crlfile":Ljava/io/FileInputStream;
    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 608
    .local v2, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    .end local v5    # "crlfile":Ljava/io/FileInputStream;
    .local v6, "crlfile":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v3, v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 619
    if-eqz v6, :cond_0

    .line 620
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v5, v6

    .line 627
    .end local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v6    # "crlfile":Ljava/io/FileInputStream;
    .restart local v5    # "crlfile":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-object v3

    .line 622
    .end local v5    # "crlfile":Ljava/io/FileInputStream;
    .restart local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "crlfile":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    .line 623
    .local v8, "ioe":Ljava/io/IOException;
    const-string v9, "AuthUtil"

    const-string v10, "Failed to close certificate revocation list file"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 625
    .end local v6    # "crlfile":Ljava/io/FileInputStream;
    .restart local v5    # "crlfile":Ljava/io/FileInputStream;
    goto :goto_0

    .line 611
    .end local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v8    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 612
    .local v1, "ce":Ljava/security/cert/CertificateException;
    :goto_1
    :try_start_3
    const-string v9, "AuthUtil"

    const-string v10, "Failed get CertificateFactory instance "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 619
    if-eqz v5, :cond_1

    .line 620
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 622
    :catch_2
    move-exception v8

    .line 623
    .restart local v8    # "ioe":Ljava/io/IOException;
    const-string v9, "AuthUtil"

    const-string v10, "Failed to close certificate revocation list file"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 613
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .end local v8    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 614
    .local v7, "fnfe":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v9, "AuthUtil"

    const-string v10, "Failed to find certificate revocation list file"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 619
    if-eqz v5, :cond_1

    .line 620
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 622
    :catch_4
    move-exception v8

    .line 623
    .restart local v8    # "ioe":Ljava/io/IOException;
    const-string v9, "AuthUtil"

    const-string v10, "Failed to close certificate revocation list file"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 615
    .end local v7    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v8    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 616
    .local v4, "crle":Ljava/security/cert/CRLException;
    :goto_3
    :try_start_7
    const-string v9, "AuthUtil"

    const-string v10, "Failed to generate certificate revocation list"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 619
    if-eqz v5, :cond_1

    .line 620
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 622
    :catch_6
    move-exception v8

    .line 623
    .restart local v8    # "ioe":Ljava/io/IOException;
    const-string v9, "AuthUtil"

    const-string v10, "Failed to close certificate revocation list file"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 618
    .end local v4    # "crle":Ljava/security/cert/CRLException;
    .end local v8    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 619
    :goto_4
    if-eqz v5, :cond_2

    .line 620
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 624
    :cond_2
    :goto_5
    throw v9

    .line 622
    :catch_7
    move-exception v8

    .line 623
    .restart local v8    # "ioe":Ljava/io/IOException;
    const-string v10, "AuthUtil"

    const-string v11, "Failed to close certificate revocation list file"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 618
    .end local v5    # "crlfile":Ljava/io/FileInputStream;
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "crlfile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "crlfile":Ljava/io/FileInputStream;
    .restart local v5    # "crlfile":Ljava/io/FileInputStream;
    goto :goto_4

    .line 615
    .end local v5    # "crlfile":Ljava/io/FileInputStream;
    .restart local v6    # "crlfile":Ljava/io/FileInputStream;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "crlfile":Ljava/io/FileInputStream;
    .restart local v5    # "crlfile":Ljava/io/FileInputStream;
    goto :goto_3

    .line 613
    .end local v5    # "crlfile":Ljava/io/FileInputStream;
    .restart local v6    # "crlfile":Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    move-object v5, v6

    .end local v6    # "crlfile":Ljava/io/FileInputStream;
    .restart local v5    # "crlfile":Ljava/io/FileInputStream;
    goto :goto_2

    .line 611
    .end local v5    # "crlfile":Ljava/io/FileInputStream;
    .restart local v6    # "crlfile":Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v5, v6

    .end local v6    # "crlfile":Ljava/io/FileInputStream;
    .restart local v5    # "crlfile":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private loadCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 572
    const/4 v4, 0x0

    .line 574
    .local v4, "certificate":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 577
    .local v1, "cafile":Ljava/io/FileInputStream;
    :try_start_0
    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 579
    .local v5, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .end local v1    # "cafile":Ljava/io/FileInputStream;
    .local v2, "cafile":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 589
    if-eqz v2, :cond_0

    .line 590
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 597
    .end local v2    # "cafile":Ljava/io/FileInputStream;
    .end local v5    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "cafile":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-object v4

    .line 592
    .end local v1    # "cafile":Ljava/io/FileInputStream;
    .restart local v2    # "cafile":Ljava/io/FileInputStream;
    .restart local v5    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v7

    .line 593
    .local v7, "ioe":Ljava/io/IOException;
    const-string v8, "AuthUtil"

    const-string v9, "Failed to close certificate file"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 595
    .end local v2    # "cafile":Ljava/io/FileInputStream;
    .restart local v1    # "cafile":Ljava/io/FileInputStream;
    goto :goto_0

    .line 583
    .end local v5    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 584
    .local v3, "ce":Ljava/security/cert/CertificateException;
    :goto_1
    :try_start_3
    const-string v8, "AuthUtil"

    const-string v9, "Failed to import certificate"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    if-eqz v1, :cond_1

    .line 590
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 592
    :catch_2
    move-exception v7

    .line 593
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string v8, "AuthUtil"

    const-string v9, "Failed to close certificate file"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 585
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 586
    .local v6, "fnfe":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v8, "AuthUtil"

    const-string v9, "Failed to find certificate file"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 589
    if-eqz v1, :cond_1

    .line 590
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 592
    :catch_4
    move-exception v7

    .line 593
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string v8, "AuthUtil"

    const-string v9, "Failed to close certificate file"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 588
    .end local v6    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 589
    :goto_3
    if-eqz v1, :cond_2

    .line 590
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 594
    :cond_2
    :goto_4
    throw v8

    .line 592
    :catch_5
    move-exception v7

    .line 593
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string v9, "AuthUtil"

    const-string v10, "Failed to close certificate file"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 588
    .end local v1    # "cafile":Ljava/io/FileInputStream;
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "cafile":Ljava/io/FileInputStream;
    .restart local v5    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "cafile":Ljava/io/FileInputStream;
    .restart local v1    # "cafile":Ljava/io/FileInputStream;
    goto :goto_3

    .line 585
    .end local v1    # "cafile":Ljava/io/FileInputStream;
    .restart local v2    # "cafile":Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2    # "cafile":Ljava/io/FileInputStream;
    .restart local v1    # "cafile":Ljava/io/FileInputStream;
    goto :goto_2

    .line 583
    .end local v1    # "cafile":Ljava/io/FileInputStream;
    .restart local v2    # "cafile":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "cafile":Ljava/io/FileInputStream;
    .restart local v1    # "cafile":Ljava/io/FileInputStream;
    goto :goto_1
.end method
