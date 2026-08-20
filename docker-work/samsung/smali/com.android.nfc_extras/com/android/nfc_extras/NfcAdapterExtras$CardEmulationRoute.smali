.class public final Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;
.super Ljava/lang/Object;
.source "NfcAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc_extras/NfcAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardEmulationRoute"
.end annotation


# static fields
.field public static final ROUTE_OFF:I = 0x1

.field public static final ROUTE_ON_WHEN_SCREEN_ON:I = 0x2


# instance fields
.field public final nfcEe:Lcom/android/nfc_extras/NfcExecutionEnvironment;

.field public final route:I


# direct methods
.method public constructor <init>(ILcom/android/nfc_extras/NfcExecutionEnvironment;)V
    .registers 5
    .param p1, "route"    # I
    .param p2, "nfcEe"    # Lcom/android/nfc_extras/NfcExecutionEnvironment;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    if-nez p2, :cond_9

    goto :goto_11

    .line 150
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must not specifiy a NFC-EE with ROUTE_OFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_11
    :goto_11
    if-eq p1, v0, :cond_1e

    if-eqz p2, :cond_16

    goto :goto_1e

    .line 152
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must specifiy a NFC-EE for this route"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1e
    :goto_1e
    iput p1, p0, Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;->route:I

    .line 155
    iput-object p2, p0, Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;->nfcEe:Lcom/android/nfc_extras/NfcExecutionEnvironment;

    .line 156
    return-void
.end method
