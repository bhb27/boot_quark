.class Lcom/sonymobile/enterprise/location/LocationObserverBase$1;
.super Lcom/sonymobile/enterprise/location/ILocationObserverBase$Stub;
.source "LocationObserverBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/enterprise/location/LocationObserverBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/enterprise/location/LocationObserverBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/enterprise/location/LocationObserverBase;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/enterprise/location/LocationObserverBase$1;->this$0:Lcom/sonymobile/enterprise/location/LocationObserverBase;

    invoke-direct {p0}, Lcom/sonymobile/enterprise/location/ILocationObserverBase$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationSettingFixedOn(I)V
    .locals 1
    .param p1, "returnCode"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/enterprise/location/LocationObserverBase$1;->this$0:Lcom/sonymobile/enterprise/location/LocationObserverBase;

    invoke-virtual {v0, p1}, Lcom/sonymobile/enterprise/location/LocationObserverBase;->onLocationSettingFixedOn(I)V

    .line 34
    return-void
.end method
