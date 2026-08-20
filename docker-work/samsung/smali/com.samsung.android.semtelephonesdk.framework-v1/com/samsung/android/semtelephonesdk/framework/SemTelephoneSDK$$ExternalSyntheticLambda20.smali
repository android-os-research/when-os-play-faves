.class public final synthetic Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B

.field public final synthetic f$3:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;->f$2:[B

    iput-object p4, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;->f$3:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;->f$2:[B

    iget-object v3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;->f$3:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$invokeOemRilRequestRaw$90$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method
