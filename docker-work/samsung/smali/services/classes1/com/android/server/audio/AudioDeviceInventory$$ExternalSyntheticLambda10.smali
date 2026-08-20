.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;->f$0:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->$r8$lambda$nvG6vXRTzWQBdzPURyOPSZAcjB4(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-void
.end method
