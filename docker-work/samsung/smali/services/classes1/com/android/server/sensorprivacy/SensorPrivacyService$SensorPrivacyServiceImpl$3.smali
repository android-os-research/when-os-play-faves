.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 978
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 981
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
