.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->$r8$lambda$eZAjfNczvEVsTK3VQQwyaDfXJPk(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/String;)V

    return-void
.end method
