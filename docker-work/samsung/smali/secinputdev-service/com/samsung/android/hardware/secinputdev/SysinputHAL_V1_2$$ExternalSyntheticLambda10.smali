.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;ILjava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

    iput p2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->lambda$getTspScrubPosition$2$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(ILjava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method
