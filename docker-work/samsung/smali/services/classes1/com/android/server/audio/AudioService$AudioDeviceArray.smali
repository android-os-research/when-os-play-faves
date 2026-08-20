.class public final Lcom/android/server/audio/AudioService$AudioDeviceArray;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioDeviceArray"
.end annotation


# instance fields
.field public final mDeviceAddresses:[Ljava/lang/String;

.field public final mDeviceTypes:[I


# direct methods
.method public constructor <init>([I[Ljava/lang/String;)V
    .registers 3

    .line 12349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12350
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    .line 12351
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceAddresses:[Ljava/lang/String;

    return-void
.end method
