.class public final synthetic Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->$r8$lambda$1zxm_GEmxJB5impryQy8eXlgP8A(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
