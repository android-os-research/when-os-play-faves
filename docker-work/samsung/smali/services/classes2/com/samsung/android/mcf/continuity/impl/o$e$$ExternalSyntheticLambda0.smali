.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/o$e;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o$e;ZLjava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/o$e;

    iput-boolean p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/o$e;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/mcf/continuity/impl/o$e;->$r8$lambda$VJk3Du-rzaYbYEcSzqQWUVM4tLY(Lcom/samsung/android/mcf/continuity/impl/o$e;ZLjava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    return-void
.end method
