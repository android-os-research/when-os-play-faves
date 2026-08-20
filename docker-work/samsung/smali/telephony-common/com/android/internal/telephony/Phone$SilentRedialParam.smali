.class public Lcom/android/internal/telephony/Phone$SilentRedialParam;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SilentRedialParam"
.end annotation


# instance fields
.field public blacklist causeCode:I

.field public blacklist dialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

.field public blacklist dialString:Ljava/lang/String;

.field public blacklist wrappedCallback:Landroid/os/ResultReceiver;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    .registers 5

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/Phone$SilentRedialParam;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p4, p0, Lcom/android/internal/telephony/Phone$SilentRedialParam;->wrappedCallback:Landroid/os/ResultReceiver;

    .line 351
    iput-object p1, p0, Lcom/android/internal/telephony/Phone$SilentRedialParam;->dialString:Ljava/lang/String;

    .line 352
    iput p2, p0, Lcom/android/internal/telephony/Phone$SilentRedialParam;->causeCode:I

    .line 353
    iput-object p3, p0, Lcom/android/internal/telephony/Phone$SilentRedialParam;->dialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    return-void
.end method
