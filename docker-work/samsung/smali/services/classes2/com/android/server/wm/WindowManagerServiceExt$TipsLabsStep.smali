.class public interface abstract annotation Lcom/android/server/wm/WindowManagerServiceExt$TipsLabsStep;
.super Ljava/lang/Object;
.source "WindowManagerServiceExt.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TipsLabsStep"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CAN_SHOW:I = 0x1

.field public static final FAILED_TO_SHOW_DUE_TO_CONTENT:I = 0x4

.field public static final FAILED_TO_SHOW_DUE_TO_NETWORK:I = 0x5

.field public static final FAILED_TO_SHOW_DUE_TO_UNKNOWN:I = 0x3

.field public static final SHOULD_READ_SETTINGS:I = 0x0

.field public static final SUCCEEDED_TO_SHOW:I = 0x6

.field public static final TRY_TO_SHOW:I = 0x2
