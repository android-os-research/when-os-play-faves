.class public final synthetic Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    iput-object p2, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    iget-object p0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->$r8$lambda$EF_QSYsXkHPMoQa1hcbheWGjWPE(Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;Ljava/util/Set;)V

    return-void
.end method
