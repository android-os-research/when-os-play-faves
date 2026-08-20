.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->readGuideString(I)V
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

    .line 1845
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    iput p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->val$callState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1848
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$fgetmTts(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 1849
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-eqz v0, :cond_13

    .line 1851
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v1

    .line 1853
    :goto_14
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$fgetmTts(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v2

    .line 1854
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readGuideString ttsLanguage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->val$callState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_56

    .line 1857
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$fgetmTts(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_57

    :cond_56
    move-object v1, v0

    .line 1859
    :goto_57
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$fgetmTts(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    const v3, 0x1040d2a

    iget-object v4, v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$mgetLocaleStringResource(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1860
    iget v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->val$callState:I

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    if-ne v3, v4, :cond_79

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$fgetmTtsHashForTTSPath(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)Ljava/util/HashMap;

    move-result-object p0

    goto :goto_7d

    :cond_79
    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$fgetmTtsHashForVoiceCallPath(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)Ljava/util/HashMap;

    move-result-object p0

    .line 1859
    :goto_7d
    invoke-virtual {v0, v1, v2, p0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method
