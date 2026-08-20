.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$getTspRawdataCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda6;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2$$ExternalSyntheticLambda6;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHAL_V1_2;->lambda$getTspRawdata$12(Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    return-void
.end method
