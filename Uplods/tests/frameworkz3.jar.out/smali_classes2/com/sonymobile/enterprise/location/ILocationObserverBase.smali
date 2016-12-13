.class public interface abstract Lcom/sonymobile/enterprise/location/ILocationObserverBase;
.super Ljava/lang/Object;
.source "ILocationObserverBase.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/enterprise/location/ILocationObserverBase$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLocationSettingFixedOn(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
