.class public Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints$CBC;
.super Ljava/lang/Object;
.source "CryptoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation


# static fields
.field public static final ALIAS:Ljava/lang/String; = "synthetic_password_knox.analytics.service.compression.cryptokey"

.field public static final BLOCK_MODE:Ljava/lang/String; = "CBC"

.field public static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field public static final ENCRYPTION_PADDING:Ljava/lang/String; = "PKCS7Padding"

.field public static final IV_SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
