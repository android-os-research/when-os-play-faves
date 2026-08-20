.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->runTTS(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

.field public final synthetic val$callState:I


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V
    .registers 3

    .line 1833
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    iput p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->val$callState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 2

    .line 1836
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->val$callState:I

    invoke-static {p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$mreadGuideString(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V

    return-void
.end method
