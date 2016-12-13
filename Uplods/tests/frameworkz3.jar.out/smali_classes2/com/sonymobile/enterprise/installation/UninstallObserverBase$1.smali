.class Lcom/sonymobile/enterprise/installation/UninstallObserverBase$1;
.super Lcom/sonymobile/enterprise/installation/IUninstallObserverBase$Stub;
.source "UninstallObserverBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/installation/UninstallObserverBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/enterprise/installation/UninstallObserverBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/enterprise/installation/UninstallObserverBase;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/enterprise/installation/UninstallObserverBase$1;->this$0:Lcom/sonymobile/enterprise/installation/UninstallObserverBase;

    invoke-direct {p0}, Lcom/sonymobile/enterprise/installation/IUninstallObserverBase$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/enterprise/installation/UninstallObserverBase$1;->this$0:Lcom/sonymobile/enterprise/installation/UninstallObserverBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/enterprise/installation/UninstallObserverBase;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    return-void
.end method
