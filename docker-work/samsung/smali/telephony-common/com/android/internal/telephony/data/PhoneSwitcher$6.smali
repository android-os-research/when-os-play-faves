.class Lcom/android/internal/telephony/data/PhoneSwitcher$6;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;->lambda$new$1(Ljava/lang/Integer;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 623
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$6;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataEnabledChanged(ZILjava/lang/String;)V
    .registers 4

    .line 628
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$6;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const-string p1, "EVENT_DATA_ENABLED_CHANGED"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mevaluateIfDataSwitchIsNeeded(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/String;)V

    return-void
.end method
