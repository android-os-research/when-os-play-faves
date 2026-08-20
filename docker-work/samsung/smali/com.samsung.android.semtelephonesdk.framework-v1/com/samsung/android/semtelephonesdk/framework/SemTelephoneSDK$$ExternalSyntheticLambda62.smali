.class public final synthetic Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$2:Z

    iput p4, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$3:I

    iput-object p5, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$4:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$1:I

    iget-boolean v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$2:Z

    iget v3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$3:I

    iget-object v4, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;->f$4:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getCallForwardingOption$51$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    return-void
.end method
