.class public Lcom/android/internal/policy/ExtendedRotationManager;
.super Ljava/lang/Object;
.source "ExtendedRotationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/internal/policy/ExtendedRotationManager;


# instance fields
.field private mRegisterLisner:Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;

.field private mRotationCheck:Lcom/android/internal/policy/ExtendedRotationCheck;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/android/internal/policy/ExtendedRotationManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/internal/policy/ExtendedRotationManager;->sInstance:Lcom/android/internal/policy/ExtendedRotationManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/android/internal/policy/ExtendedRotationManager;

    invoke-direct {v0}, Lcom/android/internal/policy/ExtendedRotationManager;-><init>()V

    sput-object v0, Lcom/android/internal/policy/ExtendedRotationManager;->sInstance:Lcom/android/internal/policy/ExtendedRotationManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/android/internal/policy/ExtendedRotationManager;->sInstance:Lcom/android/internal/policy/ExtendedRotationManager;

    return-object v0
.end method


# virtual methods
.method public register(Lcom/android/internal/policy/ExtendedRotationCheck;)V
    .locals 2
    .param p1, "checker"    # Lcom/android/internal/policy/ExtendedRotationCheck;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRotationCheck:Lcom/android/internal/policy/ExtendedRotationCheck;

    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRegisterLisner:Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRegisterLisner:Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;

    iget-object v1, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRotationCheck:Lcom/android/internal/policy/ExtendedRotationCheck;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;->onRegister(Lcom/android/internal/policy/ExtendedRotationCheck;)V

    .line 40
    :cond_0
    return-void
.end method

.method public setRegisterListener(Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRegisterLisner:Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;

    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRotationCheck:Lcom/android/internal/policy/ExtendedRotationCheck;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRegisterLisner:Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;

    iget-object v1, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRotationCheck:Lcom/android/internal/policy/ExtendedRotationCheck;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;->onRegister(Lcom/android/internal/policy/ExtendedRotationCheck;)V

    .line 33
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRotationCheck:Lcom/android/internal/policy/ExtendedRotationCheck;

    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRegisterLisner:Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/ExtendedRotationManager;->mRegisterLisner:Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;

    invoke-interface {v0}, Lcom/android/internal/policy/ExtendedRotationManager$RegisterListener;->onUnregister()V

    .line 47
    :cond_0
    return-void
.end method
