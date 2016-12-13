.class Lcom/sonymobile/enterprise/installation/InstallObserverBase$1;
.super Lcom/sonymobile/enterprise/installation/IInstallObserverBase$Stub;
.source "InstallObserverBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/installation/InstallObserverBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/enterprise/installation/InstallObserverBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/enterprise/installation/InstallObserverBase;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/enterprise/installation/InstallObserverBase$1;->this$0:Lcom/sonymobile/enterprise/installation/InstallObserverBase;

    invoke-direct {p0}, Lcom/sonymobile/enterprise/installation/IInstallObserverBase$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/enterprise/installation/InstallObserverBase$1;->this$0:Lcom/sonymobile/enterprise/installation/InstallObserverBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/enterprise/installation/InstallObserverBase;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    return-void
.end method
