.class public final enum Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;
.super Ljava/lang/Enum;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/authutil/AuthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtensionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

.field public static final enum EXT_INVALID:Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

.field public static final enum EXT_SILENTINSTALL:Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    const-string v1, "EXT_INVALID"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->EXT_INVALID:Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    .line 88
    new-instance v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    const-string v1, "EXT_SILENTINSTALL"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->EXT_SILENTINSTALL:Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    sget-object v1, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->EXT_INVALID:Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->EXT_SILENTINSTALL:Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->$VALUES:[Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->$VALUES:[Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    invoke-virtual {v0}, [Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/enterprise/authutil/AuthUtil$ExtensionType;

    return-object v0
.end method
