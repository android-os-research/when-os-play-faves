.class public final Lcom/sec/vsim/namespaces/NSDSNamespaces$NSDSResponseCode;
.super Ljava/lang/Object;
.source "NSDSNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/NSDSNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NSDSResponseCode"
.end annotation


# static fields
.field public static final ERROR_3GPP_AUTH_ONGOING:I = 0x458

.field public static final ERROR_AKA_AUTHENTICATION_FAILED:I = 0x3ee

.field public static final ERROR_CERTIFICATE_GENERATION_FAILURE:I = 0x3fe

.field public static final ERROR_COPY_FORBIDDEN:I = 0x415

.field public static final ERROR_CREATION_FAILURE:I = 0x425

.field public static final ERROR_DEVICE_LOCKED:I = 0x404

.field public static final ERROR_INVALID_CSR:I = 0x401

.field public static final ERROR_INVALID_DEVICE_GROUP:I = 0x41e

.field public static final ERROR_INVALID_DEVICE_ID:I = 0x3fc

.field public static final ERROR_INVALID_DEVICE_STATUS:I = 0x405

.field public static final ERROR_INVALID_FINGERPRINT:I = 0x411

.field public static final ERROR_INVALID_IP_AUTHENTICATION:I = 0x3ed

.field public static final ERROR_INVALID_OWNERID:I = 0x400

.field public static final ERROR_INVALID_PUSH_TOKEN:I = 0x438

.field public static final ERROR_INVALID_REQUEST:I = 0x3ec

.field public static final ERROR_INVALID_SERVICE_INSTANCEID:I = 0x41d

.field public static final ERROR_INVALID_SERVICE_NAME:I = 0x416

.field public static final ERROR_INVALID_TARGET_DEVICEID:I = 0x412

.field public static final ERROR_INVALID_TARGET_USER:I = 0x413

.field public static final ERROR_MAX_DEVICE_REACHED:I = 0x3f2

.field public static final ERROR_MAX_SERVICE_INSTANCE_REACHED:I = 0x414

.field public static final ERROR_MAX_SERVICE_REACHED:I = 0x410

.field public static final ERROR_NO_EPDG:I = 0x3fd

.field public static final ERROR_NO_MSISDN_FOUND:I = 0x424

.field public static final ERROR_REMOVAL_SERVICE_FAILURE:I = 0x3ff

.field public static final ERROR_REQUEST_ONGOING:I = 0x5dc

.field public static final ERROR_SERVER_ERROR:I = 0x457

.field public static final ERROR_SERVICE_NOT_ENTITLED:I = 0x418

.field public static final ERROR_SERVICE_NOT_PERMITTED:I = 0x419

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final ERROR_UNSUPPORTED_OPERATION:I = 0x270f

.field public static final FORBIDDEN_REQUEST:I = 0x3ef

.field public static final INVALID_CLIENT_ID:I = 0x3f0

.field public static final REQUEST_AKA_CHALLENGE:I = 0x3eb

.field public static final REQUEST_SUCCESSFUL:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
