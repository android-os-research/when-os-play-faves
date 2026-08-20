.class public final enum Lcom/sec/ims/volte2/data/VolteConstants$STATE;
.super Ljava/lang/Enum;
.source "VolteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/volte2/data/VolteConstants$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum AlertingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum EndedCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum EndingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum HeldCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum HoldingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum HoldingVideo:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum Idle:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum InCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum IncomingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum ModifyRequested:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum ModifyingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum OutGoingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum ReadyToCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum ResumingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum ResumingVideo:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

.field public static final enum VideoHeld:Lcom/sec/ims/volte2/data/VolteConstants$STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 2006
    new-instance v0, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->Idle:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2007
    new-instance v1, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v3, "ReadyToCall"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->ReadyToCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2008
    new-instance v3, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v5, "IncomingCall"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->IncomingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2009
    new-instance v5, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v7, "OutGoingCall"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->OutGoingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2010
    new-instance v7, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v9, "AlertingCall"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->AlertingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2011
    new-instance v9, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v11, "InCall"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->InCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2012
    new-instance v11, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v13, "HoldingCall"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->HoldingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2013
    new-instance v13, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v15, "HeldCall"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->HeldCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2014
    new-instance v15, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v14, "ResumingCall"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->ResumingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2015
    new-instance v14, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v12, "ModifyingCall"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->ModifyingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2016
    new-instance v12, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v10, "ModifyRequested"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->ModifyRequested:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2017
    new-instance v10, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v8, "HoldingVideo"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->HoldingVideo:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2018
    new-instance v8, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v6, "VideoHeld"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->VideoHeld:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2019
    new-instance v6, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v4, "ResumingVideo"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->ResumingVideo:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2020
    new-instance v4, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v2, "EndingCall"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->EndingCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2021
    new-instance v2, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const-string v6, "EndedCall"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sec/ims/volte2/data/VolteConstants$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->EndedCall:Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    .line 2005
    const/16 v6, 0x10

    new-array v6, v6, [Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2005
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$STATE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2005
    const-class v0, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/volte2/data/VolteConstants$STATE;
    .registers 1

    .line 2005
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$STATE;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    invoke-virtual {v0}, [Lcom/sec/ims/volte2/data/VolteConstants$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/volte2/data/VolteConstants$STATE;

    return-object v0
.end method
