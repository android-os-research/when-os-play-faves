.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$initTspRawDataCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;Ljava/util/ArrayList;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda9;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda9;->f$2:I

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda9;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda9;->f$2:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->lambda$initTspRawData$11$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(Ljava/util/ArrayList;IILjava/util/ArrayList;)V

    return-void
.end method
