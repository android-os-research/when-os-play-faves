.class public final synthetic Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda112;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda112;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda112;->f$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setRadioPowerEnabled$73(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    return-void
.end method
