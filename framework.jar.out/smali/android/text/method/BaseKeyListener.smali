.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/BaseKeyListener$1;
    }
.end annotation


# static fields
.field static final OLD_SEL_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 195
    return-void
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 9
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"
    .parameter "isForwardDelete"

    .prologue
    .line 67
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    and-int/lit16 v5, v5, -0xf4

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    const/4 v5, 0x0

    .line 150
    .end local p1
    :goto_0
    return v5

    .line 73
    .restart local p1
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    const/4 v5, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 79
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    const/4 v5, 0x1

    goto :goto_0

    .line 85
    :cond_3
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 87
    .local v2, start:I
    if-nez p5, :cond_4

    invoke-virtual {p4}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 89
    :cond_4
    invoke-static {p2, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 92
    .local v0, end:I
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x248

    if-ne v5, v6, :cond_6

    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 94
    move v1, v0

    .line 103
    .local v1, old:I
    if-eqz p2, :cond_6

    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, str:Ljava/lang/String;
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 106
    .local v4, tp:Landroid/text/TextPaint;
    if-eqz v4, :cond_6

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_6

    .line 107
    :goto_1
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_5

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_5
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_6

    if-eq v0, v1, :cond_6

    .line 111
    const-string v5, "BaseKeyListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offset refine, new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1           #old:I
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #tp:Landroid/text/TextPaint;
    :cond_6
    :goto_2
    if-eq v2, v0, :cond_a

    .line 147
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p2, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 148
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 116
    .end local v0           #end:I
    .restart local p1
    :cond_7
    invoke-static {p2, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 119
    .restart local v0       #end:I
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x248

    if-ne v5, v6, :cond_6

    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 121
    move v1, v0

    .line 130
    .restart local v1       #old:I
    if-eqz p2, :cond_6

    .line 131
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .restart local v3       #str:Ljava/lang/String;
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 133
    .restart local v4       #tp:Landroid/text/TextPaint;
    if-eqz v4, :cond_6

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_6

    .line 134
    :goto_3
    if-lez v0, :cond_8

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_8

    .line 135
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 137
    :cond_8
    if-lez v0, :cond_9

    .line 138
    add-int/lit8 v0, v0, -0x1

    .line 140
    :cond_9
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_6

    if-eq v0, v1, :cond_6

    .line 141
    const-string v5, "BaseKeyListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offset refine, new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 150
    .end local v1           #old:I
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #tp:Landroid/text/TextPaint;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .parameter "view"
    .parameter "content"

    .prologue
    .line 169
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 170
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 171
    .local v1, layout:Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 172
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 173
    .local v2, line:I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 174
    .local v3, start:I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 175
    .local v0, end:I
    if-eq v0, v3, :cond_0

    .line 176
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 177
    const/4 v4, 0x1

    .line 181
    .end local v0           #end:I
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #line:I
    .end local v3           #start:I
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4
    .parameter "view"
    .parameter "content"

    .prologue
    .line 154
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 155
    .local v1, selectionStart:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 156
    .local v0, selectionEnd:I
    if-ge v0, v1, :cond_0

    .line 157
    move v2, v0

    .line 158
    .local v2, temp:I
    move v0, v1

    .line 159
    move v1, v2

    .line 161
    .end local v2           #temp:I
    :cond_0
    if-eq v1, v0, :cond_1

    .line 162
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 163
    const/4 v3, 0x1

    .line 165
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .parameter "caps"
    .parameter "autoText"

    .prologue
    .line 185
    const/4 v0, 0x1

    .line 186
    .local v0, contentType:I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 197
    :goto_0
    if-eqz p1, :cond_0

    .line 198
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 200
    :cond_0
    return v0

    .line 188
    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    .line 189
    goto :goto_0

    .line 191
    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    .line 192
    goto :goto_0

    .line 194
    :pswitch_2
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 49
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 61
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 206
    sparse-switch p3, :sswitch_data_0

    .line 218
    const/4 v0, 0x0

    .line 222
    .local v0, handled:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 223
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 226
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 208
    .end local v0           #handled:Z
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 210
    .restart local v0       #handled:Z
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 211
    const/4 v1, 0x1

    goto :goto_1

    .line 215
    .end local v0           #handled:Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 216
    .restart local v0       #handled:Z
    goto :goto_0

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "content"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 234
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v4

    .line 240
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 241
    .local v1, selectionStart:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 242
    .local v0, selectionEnd:I
    if-ge v0, v1, :cond_2

    .line 243
    move v2, v0

    .line 244
    .local v2, temp:I
    move v0, v1

    .line 245
    move v1, v2

    .line 248
    .end local v2           #temp:I
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 253
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 254
    const/4 v4, 0x1

    goto :goto_0
.end method
