.class public final synthetic Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    iput-boolean p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$1:Z

    iput p3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$2:I

    iput p4, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$3:I

    iput-object p5, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    iget-boolean v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$1:Z

    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$2:I

    iget v3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$3:I

    iget-object v4, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$handleCallForwardingCallback$54(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
