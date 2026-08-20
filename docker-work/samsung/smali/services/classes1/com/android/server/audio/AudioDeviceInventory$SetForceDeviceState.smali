.class public Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetForceDeviceState"
.end annotation


# instance fields
.field public final mActiveBTDeviceName:Ljava/lang/String;

.field public final mAddress:Ljava/lang/String;

.field public final mDevice:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2082
    iput p1, p0, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mDevice:I

    .line 2083
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mAddress:Ljava/lang/String;

    .line 2084
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mActiveBTDeviceName:Ljava/lang/String;

    return-void
.end method
