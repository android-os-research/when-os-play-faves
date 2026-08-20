.class public abstract Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnSettingChangedListener"
.end annotation


# instance fields
.field public final mInterestedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;->mInterestedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onSettingChanged(Ljava/lang/String;I)V
.end method
