.class public final synthetic Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;->f$1:I

    iput p3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;->f$3:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;->f$1:I

    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;->f$2:I

    iget-object v3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;->f$3:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCdmaSubscription$94$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method
