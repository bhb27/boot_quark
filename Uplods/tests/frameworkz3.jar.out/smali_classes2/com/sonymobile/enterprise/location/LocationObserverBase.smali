.class public Lcom/sonymobile/enterprise/location/LocationObserverBase;
.super Ljava/lang/Object;
.source "LocationObserverBase.java"


# instance fields
.field private final mBinder:Lcom/sonymobile/enterprise/location/ILocationObserverBase$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/sonymobile/enterprise/location/LocationObserverBase$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/enterprise/location/LocationObserverBase$1;-><init>(Lcom/sonymobile/enterprise/location/LocationObserverBase;)V

    iput-object v0, p0, Lcom/sonymobile/enterprise/location/LocationObserverBase;->mBinder:Lcom/sonymobile/enterprise/location/ILocationObserverBase$Stub;

    return-void
.end method


# virtual methods
.method public final getBinder()Lcom/sonymobile/enterprise/location/ILocationObserverBase;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/enterprise/location/LocationObserverBase;->mBinder:Lcom/sonymobile/enterprise/location/ILocationObserverBase$Stub;

    return-object v0
.end method

.method public onLocationSettingFixedOn(I)V
    .locals 0
    .param p1, "returnCode"    # I

    .prologue
    .line 48
    return-void
.end method
