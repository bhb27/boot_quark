.class synthetic Lcom/sonymobile/enterprise/authutil/AuthUtil$1;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/authutil/AuthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$enterprise$authutil$AuthUtil$ExtensionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->values()[Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$1;->$SwitchMap$com$sonymobile$enterprise$authutil$AuthUtil$ExtensionType:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$1;->$SwitchMap$com$sonymobile$enterprise$authutil$AuthUtil$ExtensionType:[I

    sget-object v1, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->EXT_SILENTINSTALL:Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$1;->$SwitchMap$com$sonymobile$enterprise$authutil$AuthUtil$ExtensionType:[I

    sget-object v1, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->EXT_INVALID:Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
