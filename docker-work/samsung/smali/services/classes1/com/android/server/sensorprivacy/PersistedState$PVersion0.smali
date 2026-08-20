.class public Lcom/android/server/sensorprivacy/PersistedState$PVersion0;
.super Ljava/lang/Object;
.source "PersistedState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/PersistedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PVersion0"
.end annotation


# instance fields
.field public mIndividualEnabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/sensorprivacy/SensorState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIndividualEnabled(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->addState(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupgrade(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->upgrade()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    if-nez p1, :cond_d

    return-void

    .line 392
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only version 0 supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(ILcom/android/server/sensorprivacy/PersistedState$PVersion0-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final addState(IZ)V
    .registers 4

    .line 397
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v0, p2}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final upgrade()V
    .registers 1

    return-void
.end method
