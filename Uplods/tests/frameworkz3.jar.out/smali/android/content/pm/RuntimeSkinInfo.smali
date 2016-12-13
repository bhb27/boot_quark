.class public Landroid/content/pm/RuntimeSkinInfo;
.super Ljava/lang/Object;
.source "RuntimeSkinInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;,
        Landroid/content/pm/RuntimeSkinInfo$VersionCodeFilter;,
        Landroid/content/pm/RuntimeSkinInfo$Filter;
    }
.end annotation


# static fields
.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_FROM:Ljava/lang/String; = "from"

.field private static final ATTR_GROUP:Ljava/lang/String; = "group"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final ATTR_TARGET:Ljava/lang/String; = "target"

.field private static final ATTR_TO:Ljava/lang/String; = "to"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final LAF_VERSION_META_DATA:Ljava/lang/String; = "com.sonymobile.runtimeskinning.LAF_VERSION"

.field public static final RUNTIME_SKIN_META_DATA:Ljava/lang/String; = "com.sonymobile.runtimeskinning.SKIN_DEFINITION"

.field public static final RUNTIME_SKIN_META_DATA_V2:Ljava/lang/String; = "com.sonymobile.runtimeskinning.SKIN_DEFINITION_V2"

.field private static final TAG:Ljava/lang/String; = "RuntimeSkinInfo"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_LAF_VERSION_FILTER:Ljava/lang/String; = "laf-version-filter"

.field private static final TAG_VERSION_FILTER:Ljava/lang/String; = "version-filter"

.field private static final UNDEFINED_GROUP:I = 0x0

.field public static final VERSION_1:Ljava/lang/String; = "1"

.field public static final VERSION_2:Ljava/lang/String; = "2"


# instance fields
.field public final assetPath:Ljava/lang/String;

.field public digest:Landroid/content/pm/RuntimeSkinDigest;

.field public final enabled:Z

.field public final group:I

.field private final mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/RuntimeSkinInfo$Filter;",
            ">;"
        }
    .end annotation
.end field

.field public scanPath:Ljava/lang/String;

.field public final targetPackageName:Ljava/lang/String;

.field public trusted:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/content/pm/RuntimeSkinInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 326
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "group"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    .line 337
    if-nez p1, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 340
    :cond_0
    iput-object p1, p0, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    .line 341
    iput-object p2, p0, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    .line 342
    iput p3, p0, Landroid/content/pm/RuntimeSkinInfo;->group:I

    .line 343
    iput-boolean p4, p0, Landroid/content/pm/RuntimeSkinInfo;->enabled:Z

    .line 344
    return-void
.end method

.method private static parseBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "result":Ljava/lang/Boolean;
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 547
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 549
    :cond_0
    return-object v0
.end method

.method private static parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "result":Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 566
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 568
    :cond_0
    return-object v0
.end method

.method private static parseLafVersionFilter(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "owner"    # Landroid/content/pm/RuntimeSkinInfo;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 613
    :try_start_0
    const-string v4, "from"

    invoke-static {p1, v4}, Landroid/content/pm/RuntimeSkinInfo;->parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 614
    .local v1, "from":Ljava/lang/Integer;
    const-string/jumbo v4, "to"

    invoke-static {p1, v4}, Landroid/content/pm/RuntimeSkinInfo;->parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 615
    .local v2, "to":Ljava/lang/Integer;
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 616
    const/4 v4, 0x0

    const-string v5, "<laf-version-filter> requires to or from"

    aput-object v5, p2, v4

    .line 623
    .end local v1    # "from":Ljava/lang/Integer;
    .end local v2    # "to":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 619
    .restart local v1    # "from":Ljava/lang/Integer;
    .restart local v2    # "to":Ljava/lang/Integer;
    :cond_0
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;

    invoke-direct {v5, v1, v2}, Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    const/4 v3, 0x1

    goto :goto_0

    .line 621
    .end local v1    # "from":Ljava/lang/Integer;
    .end local v2    # "to":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid from or to in <laf-version-filter>"

    aput-object v4, p2, v3

    goto :goto_0
.end method

.method static parseRuntimeSkinInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "resId"    # I
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "outError"    # [Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 415
    if-eqz p1, :cond_1

    .line 416
    const/4 v2, 0x0

    .line 418
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 420
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v4, "runtime-skin"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 421
    invoke-static {p0, v1, p3, p4}, Landroid/content/pm/RuntimeSkinInfo;->parseRuntimeSkinInfo(Landroid/content/pm/PackageParser$Package;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 423
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 432
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 423
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "result":Z
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 425
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "1"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "com.sonymobile.runtimeskinning.SKIN_DEFINITION"

    .line 428
    .local v3, "skinMetaData":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v4

    goto :goto_0

    .line 426
    .end local v3    # "skinMetaData":Ljava/lang/String;
    :cond_0
    const-string v3, "com.sonymobile.runtimeskinning.SKIN_DEFINITION_V2"

    goto :goto_1

    .line 432
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static parseRuntimeSkinInfo(Landroid/content/pm/PackageParser$Package;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    if-eqz v14, :cond_0

    .line 450
    const/4 v14, 0x0

    const-string v15, "Multiple <runtime-skin> elements defined or referenced in manifest"

    aput-object v15, p2, v14

    .line 451
    const/4 v14, 0x0

    .line 533
    :goto_0
    return v14

    .line 455
    :cond_0
    const/4 v14, 0x0

    const-string/jumbo v15, "version"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "attrVersion":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 457
    const/4 v14, 0x0

    const-string v15, "Missing version attribute on <runtime-skin>"

    aput-object v15, p2, v14

    .line 458
    const/4 v14, 0x0

    goto :goto_0

    .line 461
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 463
    const-string v14, "RuntimeSkinInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsupported version code, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; expected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v14, 0x1

    goto :goto_0

    .line 467
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v10, "skins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/RuntimeSkinInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 469
    .local v3, "assets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    add-int/lit8 v9, v14, 0x1

    .line 472
    .local v9, "searchDepth":I
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_d

    const/4 v14, 0x3

    if-ne v13, v14, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-lt v14, v9, :cond_d

    .line 473
    :cond_4
    const/4 v14, 0x3

    if-eq v13, v14, :cond_3

    const/4 v14, 0x4

    if-eq v13, v14, :cond_3

    .line 477
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 478
    .local v11, "tagName":Ljava/lang/String;
    const-string v14, "asset"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ne v14, v9, :cond_c

    .line 479
    const/4 v14, 0x0

    const-string/jumbo v15, "path"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, "path":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "target"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 481
    .local v12, "target":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 482
    :cond_5
    const/4 v14, 0x0

    const-string v15, "<asset> does not specify path or target"

    aput-object v15, p2, v14

    .line 483
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 485
    :cond_6
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 486
    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Two or more <asset> elements reference the same path, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, p2, v14

    .line 487
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 494
    :cond_7
    const-string v14, "2"

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 496
    :try_start_0
    const-string v14, "group"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/content/pm/RuntimeSkinInfo;->parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 497
    .local v7, "group":Ljava/lang/Integer;
    const-string v14, "enabled"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/content/pm/RuntimeSkinInfo;->parseBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 500
    .local v6, "enabled":Ljava/lang/Boolean;
    if-eqz v7, :cond_8

    if-nez v6, :cond_9

    .line 501
    :cond_8
    const/4 v14, 0x0

    const-string v15, "<asset> requires both group and enabled attributes"

    aput-object v15, p2, v14

    .line 502
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 505
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-gtz v14, :cond_a

    .line 506
    const/4 v14, 0x0

    const-string v15, "group attribute must be larger than 0"

    aput-object v15, p2, v14

    .line 507
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 510
    :cond_a
    new-instance v2, Landroid/content/pm/RuntimeSkinInfo;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-direct {v2, v12, v8, v14, v15}, Landroid/content/pm/RuntimeSkinInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v6    # "enabled":Ljava/lang/Boolean;
    .end local v7    # "group":Ljava/lang/Integer;
    .local v2, "arsi":Landroid/content/pm/RuntimeSkinInfo;
    :goto_2
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/content/pm/RuntimeSkinInfo;->parseVersionFilters(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 521
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 511
    .end local v2    # "arsi":Landroid/content/pm/RuntimeSkinInfo;
    :catch_0
    move-exception v5

    .line 512
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/4 v14, 0x0

    const-string v15, "Invalid group attribute in <asset>"

    aput-object v15, p2, v14

    .line 513
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 516
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    new-instance v2, Landroid/content/pm/RuntimeSkinInfo;

    invoke-direct {v2, v12, v8}, Landroid/content/pm/RuntimeSkinInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "arsi":Landroid/content/pm/RuntimeSkinInfo;
    goto :goto_2

    .line 524
    .end local v2    # "arsi":Landroid/content/pm/RuntimeSkinInfo;
    .end local v8    # "path":Ljava/lang/String;
    .end local v12    # "target":Ljava/lang/String;
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 527
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 528
    const/4 v14, 0x0

    const-string v15, "<runtime-skin> must contain one or more valid <asset> elements"

    aput-object v15, p2, v14

    .line 529
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 532
    :cond_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/pm/RuntimeSkinInfo;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/pm/RuntimeSkinInfo;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/content/pm/PackageParser$Package;->mRuntimeSkins:[Landroid/content/pm/RuntimeSkinInfo;

    .line 533
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method private static parseVersionFilter(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "owner"    # Landroid/content/pm/RuntimeSkinInfo;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 585
    :try_start_0
    const-string v4, "from"

    invoke-static {p1, v4}, Landroid/content/pm/RuntimeSkinInfo;->parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 586
    .local v1, "from":Ljava/lang/Integer;
    const-string/jumbo v4, "to"

    invoke-static {p1, v4}, Landroid/content/pm/RuntimeSkinInfo;->parseInteger(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 587
    .local v2, "to":Ljava/lang/Integer;
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 588
    const/4 v4, 0x0

    const-string v5, "<version-filter> requires to or from"

    aput-object v5, p2, v4

    .line 595
    .end local v1    # "from":Ljava/lang/Integer;
    .end local v2    # "to":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 591
    .restart local v1    # "from":Ljava/lang/Integer;
    .restart local v2    # "to":Ljava/lang/Integer;
    :cond_0
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/pm/RuntimeSkinInfo$VersionCodeFilter;

    invoke-direct {v5, v1, v2}, Landroid/content/pm/RuntimeSkinInfo$VersionCodeFilter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    const/4 v3, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "from":Ljava/lang/Integer;
    .end local v2    # "to":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid from or to in <version-filter>"

    aput-object v4, p2, v3

    goto :goto_0
.end method

.method private static parseVersionFilters(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 8
    .param p0, "owner"    # Landroid/content/pm/RuntimeSkinInfo;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 640
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 643
    .local v1, "searchDepth":I
    const/4 v0, 0x0

    .line 645
    .local v0, "lafFilter":Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    if-eq v3, v5, :cond_5

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-lt v6, v1, :cond_5

    .line 646
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    .line 650
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "tagName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v1, :cond_4

    .line 652
    const-string/jumbo v6, "version-filter"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 653
    invoke-static {p0, p1, p2}, Landroid/content/pm/RuntimeSkinInfo;->parseVersionFilter(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 672
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    return v4

    .line 656
    .restart local v2    # "tagName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "laf-version-filter"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 657
    invoke-static {p0, p1, p2}, Landroid/content/pm/RuntimeSkinInfo;->parseLafVersionFilter(Landroid/content/pm/RuntimeSkinInfo;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 660
    const/4 v0, 0x1

    goto :goto_0

    .line 663
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 666
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 670
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;->BLOCKER:Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v4, v5

    .line 672
    goto :goto_1
.end method


# virtual methods
.method public isValid(Landroid/content/pm/PackageParser$Package;)Z
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 355
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 356
    .local v3, "result":Z
    if-eqz v3, :cond_1

    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, "foundValid":Z
    iget-object v4, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RuntimeSkinInfo$Filter;

    .line 359
    .local v0, "filter":Landroid/content/pm/RuntimeSkinInfo$Filter;
    invoke-virtual {v0, p1}, Landroid/content/pm/RuntimeSkinInfo$Filter;->getValidity(Landroid/content/pm/PackageParser$Package;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 378
    const/4 v4, 0x0

    .line 384
    .end local v0    # "filter":Landroid/content/pm/RuntimeSkinInfo$Filter;
    .end local v1    # "foundValid":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return v4

    .line 365
    .restart local v0    # "filter":Landroid/content/pm/RuntimeSkinInfo$Filter;
    .restart local v1    # "foundValid":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    :pswitch_1
    const/4 v1, 0x1

    .line 366
    goto :goto_0

    .line 371
    :pswitch_2
    const/4 v3, 0x0

    .line 372
    goto :goto_0

    .line 382
    .end local v0    # "filter":Landroid/content/pm/RuntimeSkinInfo$Filter;
    :cond_0
    or-int/2addr v3, v1

    .end local v1    # "foundValid":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    move v4, v3

    .line 384
    goto :goto_1

    .line 359
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{target="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scanPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinInfo;->scanPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 395
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 396
    const-string v1, ", mFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinInfo;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
