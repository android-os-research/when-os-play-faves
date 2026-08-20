.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda13;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda13;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->lambda$getSpenCommandList$10$com-samsung-android-hardware-secinputdev-SysinputHAL_V1_2(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method
