.class Lcom/android/ims/internal/ConferenceParticipant$1;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ConferenceParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/ConferenceParticipant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/ConferenceParticipant;
    .registers 21
    .param p1, "source"    # Landroid/os/Parcel;

    .line 117
    move-object/from16 v0, p1

    const-class v1, Lcom/android/ims/internal/ConferenceParticipant;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 118
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 119
    .local v9, "extra":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/net/Uri;

    .line 120
    .local v10, "handle":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 121
    .local v11, "displayName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/net/Uri;

    .line 122
    .local v12, "endpoint":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 123
    .local v13, "state":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 124
    .local v14, "connectTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 125
    .local v7, "elapsedRealTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 126
    .local v16, "callDirection":I
    new-instance v17, Lcom/android/ims/internal/ConferenceParticipant;

    move-object/from16 v2, v17

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v18, v1

    move-wide v0, v7

    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v7    # "elapsedRealTime":J
    .local v0, "elapsedRealTime":J
    .local v18, "classLoader":Ljava/lang/ClassLoader;
    move v7, v13

    move/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/android/ims/internal/ConferenceParticipant;-><init>(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 129
    .local v2, "participant":Lcom/android/ims/internal/ConferenceParticipant;
    invoke-virtual {v2, v14, v15}, Lcom/android/ims/internal/ConferenceParticipant;->setConnectTime(J)V

    .line 130
    invoke-virtual {v2, v0, v1}, Lcom/android/ims/internal/ConferenceParticipant;->setConnectElapsedTime(J)V

    .line 131
    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ConferenceParticipant$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/ConferenceParticipant;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/ims/internal/ConferenceParticipant;
    .registers 3
    .param p1, "size"    # I

    .line 136
    new-array v0, p1, [Lcom/android/ims/internal/ConferenceParticipant;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ConferenceParticipant$1;->newArray(I)[Lcom/android/ims/internal/ConferenceParticipant;

    move-result-object p1

    return-object p1
.end method
