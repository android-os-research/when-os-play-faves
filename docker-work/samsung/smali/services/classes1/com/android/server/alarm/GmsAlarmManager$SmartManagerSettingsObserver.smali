.class public Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartManagerSettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Handler;)V
    .registers 3

    .line 1140
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 1141
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const-string p1, "GmsAlarmManager"

    const-string/jumbo v0, "onChange - mSmartManagerSettingsObserver for GmsAlarmManger!"

    .line 1146
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mgetSettingsValueFromDB(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method
