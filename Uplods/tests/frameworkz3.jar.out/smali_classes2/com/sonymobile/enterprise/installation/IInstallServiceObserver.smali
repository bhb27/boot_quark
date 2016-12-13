.class public interface abstract Lcom/sonymobile/enterprise/installation/IInstallServiceObserver;
.super Ljava/lang/Object;
.source "IInstallServiceObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/enterprise/installation/IInstallServiceObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCompleteRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
