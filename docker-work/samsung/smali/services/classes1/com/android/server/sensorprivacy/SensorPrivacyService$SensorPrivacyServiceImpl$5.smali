.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$5;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showConfirmDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .registers 2

    .line 989
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$5;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 992
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$5;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$fputmIsConfirmPopupShowing(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Z)V

    return-void
.end method
