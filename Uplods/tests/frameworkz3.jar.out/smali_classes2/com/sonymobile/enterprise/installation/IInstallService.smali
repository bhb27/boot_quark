.class public interface abstract Lcom/sonymobile/enterprise/installation/IInstallService;
.super Ljava/lang/Object;
.source "IInstallService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/enterprise/installation/IInstallService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerInstallObserver(Ljava/lang/String;Lcom/sonymobile/enterprise/installation/IInstallObserverBase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerInstallServiceObserver(Lcom/sonymobile/enterprise/installation/IInstallServiceObserver;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerUninstallObserver(Ljava/lang/String;Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestOperation(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
