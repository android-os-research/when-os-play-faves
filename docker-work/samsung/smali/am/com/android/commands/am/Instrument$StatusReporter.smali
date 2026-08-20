.class interface abstract Lcom/android/commands/am/Instrument$StatusReporter;
.super Ljava/lang/Object;
.source "Instrument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Instrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "StatusReporter"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Z)V
.end method

.method public abstract onInstrumentationFinishedLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
.end method

.method public abstract onInstrumentationStatusLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
.end method
