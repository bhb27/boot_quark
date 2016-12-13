.class public Lcom/sonymobile/enterprise/installation/UninstallObserverBase;
.super Ljava/lang/Object;
.source "UninstallObserverBase.java"


# instance fields
.field private final mBinder:Lcom/sonymobile/enterprise/installation/IUninstallObserverBase$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/sonymobile/enterprise/installation/UninstallObserverBase$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/enterprise/installation/UninstallObserverBase$1;-><init>(Lcom/sonymobile/enterprise/installation/UninstallObserverBase;)V

    iput-object v0, p0, Lcom/sonymobile/enterprise/installation/UninstallObserverBase;->mBinder:Lcom/sonymobile/enterprise/installation/IUninstallObserverBase$Stub;

    return-void
.end method


# virtual methods
.method public final getBinder()Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/enterprise/installation/UninstallObserverBase;->mBinder:Lcom/sonymobile/enterprise/installation/IUninstallObserverBase$Stub;

    return-object v0
.end method

.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method
