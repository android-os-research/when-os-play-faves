.class public final synthetic Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$2:Z

    iput-object p4, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$4:Z

    iput-object p6, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$6:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$1:I

    iget-boolean v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$2:Z

    iget-object v3, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$4:Z

    iget-object v5, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;->f$6:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCallBarringEnabled$43$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-void
.end method
