.class public Lcom/htc/music/widget/MusicAlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "MusicAlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field public static final ALPHABET:Ljava/lang/String; = " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final TAG:Ljava/lang/String; = "[MusicAlphabetIndexer]"


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;

.field private mSectionLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 78
    const-string v1, " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mSectionLabel:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 94
    iput p2, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    .line 95
    iput-object p3, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 96
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    .line 97
    iget v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 102
    if-eqz p1, :cond_1

    .line 103
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 106
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 107
    iget-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 108
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "word"
    .parameter "letter"

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    const-string v3, "[MusicAlphabetIndexer]"

    const-string v4, "compare(), word and letter are empty"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    return v2

    .line 152
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    const-string v2, "[MusicAlphabetIndexer]"

    const-string v3, "compare(), word is empty"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v2, -0x1

    goto :goto_0

    .line 155
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    const-string v2, "[MusicAlphabetIndexer]"

    const-string v3, "compare(), letter is empty"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x1

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, wordKey:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 172
    .local v0, firstchar:C
    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    const/16 v3, 0x61

    if-ge v0, v3, :cond_4

    .line 173
    const-string v2, "@"

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 21
    .parameter "sectionIndex"

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 195
    .local v2, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 197
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 198
    :cond_0
    const/4 v11, 0x0

    .line 310
    :cond_1
    :goto_0
    return v11

    .line 202
    :cond_2
    if-gtz p1, :cond_3

    .line 203
    const/4 v11, 0x0

    goto :goto_0

    .line 205
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    add-int/lit8 p1, v17, -0x1

    .line 209
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    .line 211
    .local v14, savedCursorPos:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 212
    .local v3, count:I
    const/4 v15, 0x0

    .line 213
    .local v15, start:I
    move v8, v3

    .line 216
    .local v8, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 217
    .local v10, letter:C
    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v16

    .line 218
    .local v16, targetLetter:Ljava/lang/String;
    move v9, v10

    .line 220
    .local v9, key:I
    const/high16 v17, -0x8000

    const/high16 v18, -0x8000

    move/from16 v0, v18

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .local v11, pos:I
    move/from16 v0, v17

    if-eq v0, v11, :cond_5

    .line 224
    if-gez v11, :cond_1

    .line 225
    neg-int v11, v11

    .line 226
    move v8, v11

    .line 234
    :cond_5
    if-lez p1, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 237
    .local v12, prevLetter:I
    const/high16 v17, -0x8000

    move/from16 v0, v17

    invoke-virtual {v2, v12, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 238
    .local v13, prevLetterPos:I
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-eq v13, v0, :cond_6

    .line 239
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 245
    .end local v12           #prevLetter:I
    .end local v13           #prevLetterPos:I
    :cond_6
    add-int v17, v8, v15

    div-int/lit8 v11, v17, 0x2

    .line 247
    :goto_1
    if-ge v11, v8, :cond_9

    .line 249
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, curName:Ljava/lang/String;
    if-eqz v4, :cond_7

    const-string v17, "<unknown>"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 260
    :cond_7
    move v8, v11

    .line 261
    add-int v17, v15, v8

    div-int/lit8 v11, v17, 0x2

    .line 262
    goto :goto_1

    .line 264
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 265
    .local v7, diff:I
    if-eqz v7, :cond_e

    .line 277
    if-gez v7, :cond_c

    .line 278
    add-int/lit8 v15, v11, 0x1

    .line 279
    if-lt v15, v3, :cond_d

    .line 280
    move v11, v3

    .line 299
    .end local v4           #curName:Ljava/lang/String;
    .end local v7           #diff:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mSectionLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    if-ge v11, v3, :cond_b

    .line 302
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, curName2:Ljava/lang/String;
    if-eqz v5, :cond_a

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mSectionLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-gez v17, :cond_b

    .line 305
    :cond_a
    move v11, v3

    .line 308
    .end local v5           #curName2:Ljava/lang/String;
    :cond_b
    invoke-virtual {v2, v9, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 309
    invoke-interface {v6, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 284
    .restart local v4       #curName:Ljava/lang/String;
    .restart local v7       #diff:I
    :cond_c
    move v8, v11

    .line 296
    :cond_d
    :goto_2
    add-int v17, v15, v8

    div-int/lit8 v11, v17, 0x2

    .line 297
    goto :goto_1

    .line 288
    :cond_e
    if-eq v15, v11, :cond_9

    .line 293
    move v8, v11

    goto :goto_2
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 318
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 319
    .local v3, savedCursorPos:I
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 320
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, curName:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 324
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_1

    .line 325
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 326
    .local v2, letter:C
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, targetLetter:Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/htc/music/widget/MusicAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 331
    .end local v1           #i:I
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :goto_1
    return v1

    .line 324
    .restart local v1       #i:I
    .restart local v2       #letter:C
    .restart local v4       #targetLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 340
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 341
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 349
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 350
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 127
    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 131
    return-void
.end method
