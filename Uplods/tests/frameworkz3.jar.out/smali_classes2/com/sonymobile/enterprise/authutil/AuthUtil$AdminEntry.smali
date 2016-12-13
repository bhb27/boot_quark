.class Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/authutil/AuthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdminEntry"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mPublicKey:Ljava/security/PublicKey;

.field final synthetic this$0:Lcom/sonymobile/enterprise/authutil/AuthUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/enterprise/authutil/AuthUtil;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-object p1, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;->this$0:Lcom/sonymobile/enterprise/authutil/AuthUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;->mPublicKey:Ljava/security/PublicKey;

    .line 82
    iput-object v0, p0, Lcom/sonymobile/enterprise/authutil/AuthUtil$AdminEntry;->mPackageName:Ljava/lang/String;

    .line 83
    return-void
.end method
