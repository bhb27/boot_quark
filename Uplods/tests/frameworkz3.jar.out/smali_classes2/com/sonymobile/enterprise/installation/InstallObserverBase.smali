.class public Lcom/sonymobile/enterprise/installation/InstallObserverBase;
.super Ljava/lang/Object;
.source "InstallObserverBase.java"


# instance fields
.field private final mBinder:Lcom/sonymobile/enterprise/installation/IInstallObserverBase$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/sonymobile/enterprise/installation/InstallObserverBase$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/enterprise/installation/InstallObserverBase$1;-><init>(Lcom/sonymobile/enterprise/installation/InstallObserverBase;)V

    iput-object v0, p0, Lcom/sonymobile/enterprise/installation/InstallObserverBase;->mBinder:Lcom/sonymobile/enterprise/installation/IInstallObserverBase$Stub;

    return-void
.end method


# virtual methods
.method public final getBinder()Lcom/sonymobile/enterprise/installation/IInstallObserverBase;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/enterprise/installation/InstallObserverBase;->mBinder:Lcom/sonymobile/enterprise/installation/IInstallObserverBase$Stub;

    return-object v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method
