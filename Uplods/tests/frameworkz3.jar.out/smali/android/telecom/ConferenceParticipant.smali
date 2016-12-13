.class public Landroid/telecom/ConferenceParticipant;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOMC_DBG:Z


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mEndpoint:Landroid/net/Uri;

.field private final mHandle:Landroid/net/Uri;

.field private final mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/telecom/ConferenceParticipant;->SOMC_DBG:Z

    .line 77
    new-instance v0, Landroid/telecom/ConferenceParticipant$1;

    invoke-direct {v0}, Landroid/telecom/ConferenceParticipant$1;-><init>()V

    sput-object v0, Landroid/telecom/ConferenceParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "handle"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "endpoint"    # Landroid/net/Uri;
    .param p4, "state"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    .line 69
    iput-object p2, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    .line 71
    iput p4, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndpoint()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-boolean v1, Landroid/telecom/ConferenceParticipant;->SOMC_DBG:Z

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "[ConferenceParticipant Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, " DisplayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, " Endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, " State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    :cond_0
    const-string v1, "[ConferenceParticipant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, " DisplayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, " State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v1, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 112
    iget v0, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return-void
.end method
