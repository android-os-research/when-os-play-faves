.class public final Lcom/sec/vsim/namespaces/NSDSNamespaces$NSDSHttpResponseCode;
.super Ljava/lang/Object;
.source "NSDSNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/NSDSNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NSDSHttpResponseCode"
.end annotation


# static fields
.field public static final ADDRESS_INCOMPLETE:I = 0x1e4

.field public static final BAD_REQUEST:I = 0x190

.field public static final BUSY_HERE:I = 0x1e6

.field public static final FORBIDDEN:I = 0x193

.field public static final METHOD_NOT_ALLOWED:I = 0x195

.field public static final NOT_ACCEPTABLE:I = 0x196

.field public static final NOT_ACCEPTABLE_HERE:I = 0x1e8

.field public static final NOT_FOUND:I = 0x194

.field public static final REQUEST_TERMINATED:I = 0x1e7

.field public static final REQUEST_TIMEOUT:I = 0x198

.field public static final SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final UNSUPPORTED_MEDIA_TYPE:I = 0x19f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
