.class public Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;
.super Ljava/lang/Object;
.source "MultimediaSessionServiceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

.field private maxMsgLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    const-class v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->maxMsgLength:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;)V
    .registers 3
    .param p1, "mssc"    # Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    .line 50
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getInactivityTimeout()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getInactivityTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->getInactivityTimeout()J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 89
    :catch_e
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMessageMaxLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMessageMaxLength()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->getMessageMaxLength()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 80
    :catch_e
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMessagingSessionInactivityTimeout(Ljava/lang/String;)J
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMessagingSessionInactivityTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_7
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->getMessagingSessionInactivityTimeout(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide v0

    .line 98
    :catch_e
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isServiceActivated(Ljava/lang/String;)Z
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceActivated(),serviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_18
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->isServiceActivated(Ljava/lang/String;)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    return v0

    .line 107
    :catch_1f
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->maxMsgLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
