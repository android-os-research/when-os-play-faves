.class public final synthetic Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

.field public final synthetic f$1:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda50;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda50;->f$1:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda50;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda50;->f$1:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getActiveFgCall$61(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;)V

    return-void
.end method
