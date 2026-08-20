.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->$r8$lambda$dzFh0KbLfbYeckKc_8wERi1Iftc(Lcom/android/server/audio/AudioDeviceInventory;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z

    move-result p0

    return p0
.end method
