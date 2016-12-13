.class Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/authutil/AuthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthExtensionChecker"
.end annotation


# instance fields
.field prevAuthItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/enterprise/authutil/AuthUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/enterprise/authutil/AuthUtil;)V
    .locals 1

    .prologue
    .line 776
    iput-object p1, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;->this$0:Lcom/sonymobile/enterprise/authutil/AuthUtil;

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;->prevAuthItems:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/enterprise/authutil/AuthUtil;Lcom/sonymobile/enterprise/authutil/AuthUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/enterprise/authutil/AuthUtil;
    .param p2, "x1"    # Lcom/sonymobile/enterprise/authutil/AuthUtil$1;

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;-><init>(Lcom/sonymobile/enterprise/authutil/AuthUtil;)V

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .param p2, "unresolvedCritExts"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 799
    move-object v3, p1

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 803
    .local v3, "xcert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v2, 0x1

    .line 809
    .local v2, "isIntermediateCA":Z
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;->this$0:Lcom/sonymobile/enterprise/authutil/AuthUtil;

    # invokes: Lcom/sonymobile/enterprise/authutil/AuthUtil;->extractCertExtensionString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->access$100(Lcom/sonymobile/enterprise/authutil/AuthUtil;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "extensionString":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "Authentication:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    const-string v5, "Authentication:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Authentication:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 814
    :cond_0
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Authentication tag is not of correct format"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1    # "extensionString":Ljava/lang/String;
    .end local v2    # "isIntermediateCA":Z
    :cond_1
    move v2, v4

    .line 803
    goto :goto_0

    .line 817
    .restart local v1    # "extensionString":Ljava/lang/String;
    .restart local v2    # "isIntermediateCA":Z
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;->this$0:Lcom/sonymobile/enterprise/authutil/AuthUtil;

    # invokes: Lcom/sonymobile/enterprise/authutil/AuthUtil;->extractAuthItems(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v4, v1}, Lcom/sonymobile/enterprise/authutil/AuthUtil;->access$200(Lcom/sonymobile/enterprise/authutil/AuthUtil;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 820
    .local v0, "authItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_3

    .line 821
    if-nez v2, :cond_3

    .line 822
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "No Authentication tag on end certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 831
    :cond_3
    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;->prevAuthItems:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 832
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Certificate down the chain does not contain authentication value but more-trusted certificate does"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 835
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;->prevAuthItems:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;->prevAuthItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 836
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Certificate down the chain contains authentication value not in more-trusted certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 839
    :cond_5
    iput-object v0, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;->prevAuthItems:Ljava/util/List;

    .line 841
    if-eqz p2, :cond_6

    .line 842
    const-string v4, "1.2.3.4"

    invoke-interface {p2, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 844
    :cond_6
    return-void
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1

    .prologue
    .line 789
    const-string v0, "1.2.3.4"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public init(Z)V
    .locals 1
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 781
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AuthExtensionChecker;->prevAuthItems:Ljava/util/List;

    .line 786
    return-void
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method
