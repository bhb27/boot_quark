.class public interface abstract Lcom/sonymobile/enterprise/installation/IInstallObserverBase;
.super Ljava/lang/Object;
.source "IInstallObserverBase.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/enterprise/installation/IInstallObserverBase$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPackageInstalled(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
