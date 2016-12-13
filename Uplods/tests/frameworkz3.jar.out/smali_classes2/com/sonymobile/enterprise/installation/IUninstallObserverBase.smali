.class public interface abstract Lcom/sonymobile/enterprise/installation/IUninstallObserverBase;
.super Ljava/lang/Object;
.source "IUninstallObserverBase.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/enterprise/installation/IUninstallObserverBase$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
