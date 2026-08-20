.class public final Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContinuityPacket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;",
        "Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;",
        ">;",
        "Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacketOrBuilder;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field public id_:I

.field public payload_:Lcom/google/protobuf/ByteString;

.field public type_:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;-><init>()V

    sput-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    const-class v1, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->setType(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->clearType()V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->setId(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->clearId()V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->clearPayload()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object v0
.end method

.method public static newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;
    .registers 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;
    .registers 2

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clearId()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->id_:I

    return-void
.end method

.method public final clearPayload()V
    .registers 2

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getDefaultInstance()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public final clearType()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->type_:I

    return-void
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$a;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_5e

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_13
    return-object p2

    :pswitch_14
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_32

    const-class p1, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    monitor-enter p1

    :try_start_20
    sget-object p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2d

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->PARSER:Lcom/google/protobuf/Parser;

    :cond_2d
    monitor-exit p1

    goto :goto_32

    :catchall_2f
    move-exception p0

    monitor-exit p1
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p0

    :cond_32
    :goto_32
    return-object p0

    :pswitch_33
    sget-object p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    return-object p0

    :pswitch_36
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo p3, "type_"

    aput-object p3, p0, p2

    const-string p2, "id_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string/jumbo p2, "payload_"

    aput-object p2, p0, p1

    sget-object p1, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->DEFAULT_INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\n"

    invoke-static {p1, p2, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_52
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    invoke-direct {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;-><init>(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$a;)V

    return-object p0

    :pswitch_58
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;-><init>()V

    return-object p0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getId()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->id_:I

    return p0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->payload_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getType()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->type_:I

    return p0
.end method

.method public final setId(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->id_:I

    return-void
.end method

.method public final setPayload(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public final setType(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->type_:I

    return-void
.end method
