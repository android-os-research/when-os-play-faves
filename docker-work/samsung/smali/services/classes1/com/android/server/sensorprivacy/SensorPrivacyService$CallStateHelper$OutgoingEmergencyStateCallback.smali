.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutgoingEmergencyStateCallback"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V
    .registers 2

    .line 1745
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V

    return-void
.end method


# virtual methods
.method public onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 3

    .line 1750
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->-$$Nest$monEmergencyCall(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V

    return-void
.end method
