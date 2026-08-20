.class final Lcom/mediatek/widget/CustomAccountRemoteViews$IdIndex;
.super Ljava/lang/Object;
.source "CustomAccountRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/CustomAccountRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdIndex"
.end annotation


# static fields
.field public static final blacklist CONTAINER_ID:I = 0x0

.field public static final blacklist HIGHTLIGHT_DIVIDER_ID:I = 0x5

.field public static final blacklist IMG_ID:I = 0x1

.field public static final blacklist NAME_ID:I = 0x2

.field public static final blacklist NORMAL_DIVIDER_ID:I = 0x4

.field public static final blacklist NUMBER_ID:I = 0x3


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/widget/CustomAccountRemoteViews;


# direct methods
.method private constructor blacklist <init>(Lcom/mediatek/widget/CustomAccountRemoteViews;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$IdIndex;->this$0:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method
