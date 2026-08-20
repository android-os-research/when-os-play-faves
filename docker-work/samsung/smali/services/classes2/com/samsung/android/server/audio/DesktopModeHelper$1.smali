.class public Lcom/samsung/android/server/audio/DesktopModeHelper$1;
.super Ljava/lang/Object;
.source "DesktopModeHelper.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/DesktopModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/DesktopModeHelper;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 8

    .line 59
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v3

    .line 64
    :goto_d
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-static {v2}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fgetmResolver(Lcom/samsung/android/server/audio/DesktopModeHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "audio_output_to_display"

    invoke-static {v2, v4, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEX enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isAudioOutputToDisplay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.DesktopModeHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3d

    if-eqz v2, :cond_3d

    xor-int/lit8 v0, v0, 0x1

    .line 71
    :cond_3d
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-static {v2}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fgetmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;)Z

    move-result v2

    if-eq v2, v0, :cond_67

    .line 72
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-static {v2, v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fputmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    if-eqz p1, :cond_53

    goto :goto_54

    :cond_53
    move v1, v3

    :goto_54
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fputmIsDesktopMode(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)V

    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-static {p0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fgetmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;)Z

    move-result p1

    if-eqz p1, :cond_62

    const-string p1, "dex"

    goto :goto_64

    :cond_62
    const-string p1, "none"

    :goto_64
    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$msetDexPolicyParameter(Lcom/samsung/android/server/audio/DesktopModeHelper;Ljava/lang/String;)V

    :cond_67
    return-void
.end method
